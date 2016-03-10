  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vmovd %ecx, %xmm1                   #  1     0     4      OPC=vmovd_xmm_r32             
  vfnmsub231ps %ymm1, %ymm1, %ymm1    #  2     0x4   5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  xchgl %ecx, %ebx                    #  3     0x9   2      OPC=xchgl_r32_r32             
  cmovnzl %ecx, %ebx                  #  4     0xb   3      OPC=cmovnzl_r32_r32           
  callq .move_byte_20_of_ymm1_to_r9b  #  5     0xe   5      OPC=callq_label               
  callq .move_r9b_to_byte_6_of_rbx    #  6     0x13  5      OPC=callq_label               
  retq                                #  7     0x18  1      OPC=retq                      
                                                                                          
.size target, .-target
