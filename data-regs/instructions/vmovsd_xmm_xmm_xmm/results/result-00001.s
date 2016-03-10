  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvtpd2ps %xmm3, %xmm1   #  1     0    4      OPC=vcvtpd2ps_xmm_xmm   
  unpcklpd %xmm3, %xmm1    #  2     0x4  4      OPC=unpcklpd_xmm_xmm    
  punpckhqdq %xmm2, %xmm1  #  3     0x8  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
