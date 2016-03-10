  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpmovzxwd %xmm1, %xmm0                        #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm     
  vmovhlps %xmm0, %xmm6, %xmm6                  #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm6, %edx                              #  4     0xe   4      OPC=movd_r32_xmm          
  movzwl %dx, %ebx                              #  5     0x12  3      OPC=movzwl_r32_r16        
  retq                                          #  6     0x15  1      OPC=retq                  
                                                                                                
.size target, .-target
