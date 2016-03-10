  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  movl %ebx, %r8d                    #  1     0     3      OPC=movl_r32_r32        
  vandps %xmm2, %xmm2, %xmm1         #  2     0x3   4      OPC=vandps_xmm_xmm_xmm  
  callq .move_r8b_to_byte_2_of_ymm1  #  3     0x7   5      OPC=callq_label         
  movsbw %bh, %ax                    #  4     0xc   4      OPC=movsbw_r16_rh       
  xchgb %r8b, %al                    #  5     0x10  3      OPC=xchgb_r8_r8         
  callq .move_r8b_to_byte_3_of_ymm1  #  6     0x13  5      OPC=callq_label         
  retq                               #  7     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
