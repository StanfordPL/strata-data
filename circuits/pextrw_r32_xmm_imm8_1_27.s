  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %xmm13           #  1     0     5      OPC=vpmovzxwd_xmm_xmm       
  vpunpckhdq %xmm13, %xmm13, %xmm2  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhpd %xmm1, %xmm2, %xmm10    #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovd %xmm10, %ebx                #  4     0xe   4      OPC=vmovd_r32_xmm           
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
