  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movzbl %bl, %edx  #  1     0     3      OPC=movzbl_r32_r8  
  movsbw %ah, %bp   #  2     0x3   4      OPC=movsbw_r16_rh  
  callq .clear_cf   #  3     0x7   5      OPC=callq_label    
  movb %dl, %ah     #  4     0xc   2      OPC=movb_rh_r8     
  adcb %bpl, %bl    #  5     0xe   3      OPC=adcb_r8_r8     
  retq              #  6     0x11  1      OPC=retq           
                                                             
.size target, .-target
