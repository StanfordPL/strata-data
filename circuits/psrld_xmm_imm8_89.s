  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  cvtdq2ps %xmm1, %xmm13  #  1     0    4      OPC=cvtdq2ps_xmm_xmm  
  andps %xmm13, %xmm1     #  2     0x4  4      OPC=andps_xmm_xmm     
  subpd %xmm1, %xmm1      #  3     0x8  4      OPC=subpd_xmm_xmm     
  retq                    #  4     0xc  1      OPC=retq              
                                                                     
.size target, .-target
