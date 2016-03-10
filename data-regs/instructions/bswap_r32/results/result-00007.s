  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vmovd %ebx, %xmm14                 #  1     0     4      OPC=vmovd_xmm_r32         
  callq .move_032_016_ebx_r8w_r9w    #  2     0x4   5      OPC=callq_label           
  vpbroadcastd %xmm14, %ymm1         #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm  
  movzwq %r9w, %rbx                  #  4     0xe   4      OPC=movzwq_r64_r16        
  xchgb %bh, %bl                     #  5     0x12  2      OPC=xchgb_r8_rh           
  callq .move_r8b_to_byte_3_of_rbx   #  6     0x14  5      OPC=callq_label           
  callq .move_byte_5_of_ymm1_to_r8b  #  7     0x19  5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_rbx   #  8     0x1e  5      OPC=callq_label           
  retq                               #  9     0x23  1      OPC=retq                  
                                                                                     
.size target, .-target
