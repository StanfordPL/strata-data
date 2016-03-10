  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movd %ebx, %xmm12               #  1     0     5      OPC=movd_xmm_r32           
  movshdup %xmm2, %xmm10          #  2     0x5   5      OPC=movshdup_xmm_xmm       
  unpckhpd %xmm10, %xmm10         #  3     0xa   5      OPC=unpckhpd_xmm_xmm       
  punpckldq %xmm10, %xmm12        #  4     0xf   5      OPC=punpckldq_xmm_xmm      
  vunpcklpd %xmm12, %xmm2, %xmm1  #  5     0x14  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  6     0x19  1      OPC=retq                   
                                                                                   
.size target, .-target
