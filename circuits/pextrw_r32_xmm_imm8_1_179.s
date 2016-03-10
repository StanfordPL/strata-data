  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovaps %xmm1, %xmm15           #  1     0     4      OPC=vmovaps_xmm_xmm        
  vmovshdup %xmm1, %xmm2          #  2     0x4   4      OPC=vmovshdup_xmm_xmm      
  vpmovzxwq %xmm2, %xmm2          #  3     0x8   5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhps %xmm15, %xmm2, %xmm0  #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  movd %xmm0, %ebx                #  5     0x12  4      OPC=movd_r32_xmm           
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
