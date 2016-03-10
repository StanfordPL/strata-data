  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movaps %xmm2, %xmm13            #  1     0     4      OPC=movaps_xmm_xmm         
  vunpckhpd %xmm2, %xmm13, %xmm0  #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movshdup %xmm0, %xmm1           #  3     0x8   4      OPC=movshdup_xmm_xmm       
  vunpcklps %xmm1, %xmm2, %xmm0   #  4     0xc   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpckhpd %xmm0, %xmm1           #  5     0x10  4      OPC=unpckhpd_xmm_xmm       
  retq                            #  6     0x14  1      OPC=retq                   
                                                                                   
.size target, .-target
