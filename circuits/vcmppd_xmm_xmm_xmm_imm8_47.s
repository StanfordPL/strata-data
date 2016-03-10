  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vzeroall                    #  1     0     3      OPC=vzeroall            
  vdivps %xmm6, %xmm2, %xmm1  #  2     0x3   4      OPC=vdivps_xmm_xmm_xmm  
  vpmovsxdq %xmm1, %xmm2      #  3     0x7   5      OPC=vpmovsxdq_xmm_xmm   
  vpmovzxwd %xmm2, %ymm14     #  4     0xc   5      OPC=vpmovzxwd_ymm_xmm   
  movhlps %xmm14, %xmm1       #  5     0x11  4      OPC=movhlps_xmm_xmm     
  vpmovsxbq %xmm1, %xmm1      #  6     0x15  5      OPC=vpmovsxbq_xmm_xmm   
  retq                        #  7     0x1a  1      OPC=retq                
                                                                            
.size target, .-target
