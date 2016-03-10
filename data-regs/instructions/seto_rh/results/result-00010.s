  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label     
  xorl %eax, %eax          #  2     0x5   2      OPC=xorl_r32_r32    
  movzwl %cx, %ebx         #  3     0x7   3      OPC=movzwl_r32_r16  
  xchgb %cl, %bh           #  4     0xa   2      OPC=xchgb_rh_r8     
  setc %cl                 #  5     0xc   3      OPC=setc_r8         
  adcw %bx, %cx            #  6     0xf   3      OPC=adcw_r16_r16    
  xaddw %ax, %cx           #  7     0x12  4      OPC=xaddw_r16_r16   
  retq                     #  8     0x16  1      OPC=retq            
                                                                     
.size target, .-target
