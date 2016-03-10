  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  callq .clear_cf   #  1     0     5      OPC=callq_label    
  movzbl %ah, %ecx  #  2     0x5   3      OPC=movzbl_r32_rh  
  adcb %bl, %cl     #  3     0x8   2      OPC=adcb_r8_r8     
  movb %bl, %ah     #  4     0xa   2      OPC=movb_rh_r8     
  setno %bh         #  5     0xc   3      OPC=setno_rh       
  xchgw %cx, %bx    #  6     0xf   3      OPC=xchgw_r16_r16  
  retq              #  7     0x12  1      OPC=retq           
                                                             
.size target, .-target
