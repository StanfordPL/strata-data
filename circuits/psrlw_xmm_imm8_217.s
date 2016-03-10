  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmulpd %xmm1, %xmm1, %xmm9  #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  movlhps %xmm9, %xmm1        #  2     0x4   4      OPC=movlhps_xmm_xmm     
  vcvttpd2dq %xmm9, %xmm14    #  3     0x8   5      OPC=vcvttpd2dq_xmm_xmm  
  andnps %xmm9, %xmm1         #  4     0xd   4      OPC=andnps_xmm_xmm      
  subss %xmm14, %xmm1         #  5     0x11  5      OPC=subss_xmm_xmm       
  andnpd %xmm1, %xmm1         #  6     0x16  4      OPC=andnpd_xmm_xmm      
  retq                        #  7     0x1a  1      OPC=retq                
                                                                            
.size target, .-target
