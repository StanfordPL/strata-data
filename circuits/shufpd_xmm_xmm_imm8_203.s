  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminss %xmm2, %xmm2, %xmm9  #  1     0    4      OPC=vminss_xmm_xmm_xmm  
  vminpd %xmm2, %xmm9, %xmm0  #  2     0x4  4      OPC=vminpd_xmm_xmm_xmm  
  punpckhqdq %xmm0, %xmm1     #  3     0x8  4      OPC=punpckhqdq_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
