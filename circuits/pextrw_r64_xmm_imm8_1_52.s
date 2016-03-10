  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpmovzxwq %xmm15, %ymm14          #  2     0x4  5      OPC=vpmovzxwq_ymm_xmm        
  vmovd %xmm14, %ebx                #  3     0x9  4      OPC=vmovd_r32_xmm            
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
