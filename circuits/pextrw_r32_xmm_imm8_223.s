  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm14                       #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  unpckhps %xmm1, %xmm4                         #  3     0xa   3      OPC=unpckhps_xmm_xmm   
  unpckhpd %xmm4, %xmm14                        #  4     0xd   5      OPC=unpckhpd_xmm_xmm   
  vmovd %xmm14, %ebx                            #  5     0x12  4      OPC=vmovd_r32_xmm      
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
