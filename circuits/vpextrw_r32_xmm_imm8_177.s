  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %xmm2          #  1     0     5      OPC=vpmovzxwq_xmm_xmm      
  vandnps %xmm2, %xmm1, %xmm7     #  2     0x5   4      OPC=vandnps_xmm_xmm_xmm    
  vunpckhpd %xmm7, %xmm2, %xmm14  #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovq %xmm14, %rbx              #  4     0xd   5      OPC=vmovq_r64_xmm          
  retq                            #  5     0x12  1      OPC=retq                   
                                                                                   
.size target, .-target
