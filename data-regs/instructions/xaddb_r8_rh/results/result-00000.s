  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movsbw %ah, %ax                    #  1     0     4      OPC=movsbw_r16_rh   
  movzwl %ax, %ecx                   #  2     0x4   3      OPC=movzwl_r32_r16  
  movb %bl, %ah                      #  3     0x7   2      OPC=movb_rh_r8      
  callq .move_064_032_rcx_r12d_r13d  #  4     0x9   5      OPC=callq_label     
  shll $0x1, %r12d                   #  5     0xe   3      OPC=shll_r32_one    
  adcb %cl, %bl                      #  6     0x11  2      OPC=adcb_r8_r8      
  retq                               #  7     0x13  1      OPC=retq            
                                                                               
.size target, .-target
