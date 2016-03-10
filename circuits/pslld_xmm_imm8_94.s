  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  pandn %xmm1, %xmm1          #  1     0     4      OPC=pandn_xmm_xmm       
  vmulpd %xmm1, %xmm1, %xmm8  #  2     0x4   4      OPC=vmulpd_xmm_xmm_xmm  
  sqrtpd %xmm8, %xmm11        #  3     0x8   5      OPC=sqrtpd_xmm_xmm      
  cvtdq2pd %xmm11, %xmm1      #  4     0xd   5      OPC=cvtdq2pd_xmm_xmm    
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
