  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movsbq %bl, %rdi  #  1     0     4      OPC=movsbq_r64_r8  
  movzbw %ah, %bx   #  2     0x4   4      OPC=movzbw_r16_rh  
  callq .clear_cf   #  3     0x8   5      OPC=callq_label    
  adcb %dil, %bl    #  4     0xd   3      OPC=adcb_r8_r8     
  movb %bl, %ah     #  5     0x10  2      OPC=movb_rh_r8     
  retq              #  6     0x12  1      OPC=retq           
                                                             
.size target, .-target
