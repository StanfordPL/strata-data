  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vmovd %ecx, %xmm3                         #  1     0     4      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm3, %xmm1                 #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label           
  cmovnzl %r9d, %ebx                        #  4     0xe   4      OPC=cmovnzl_r32_r32       
  retq                                      #  5     0x12  1      OPC=retq                  
                                                                                            
.size target, .-target
