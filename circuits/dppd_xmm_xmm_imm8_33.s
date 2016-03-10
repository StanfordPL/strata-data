  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vcvtpd2dqx %xmm2, %xmm9  #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm  
  mulpd %xmm2, %xmm1       #  2     0x4   4      OPC=mulpd_xmm_xmm       
  addpd %xmm9, %xmm1       #  3     0x8   5      OPC=addpd_xmm_xmm       
  unpckhpd %xmm9, %xmm1    #  4     0xd   5      OPC=unpckhpd_xmm_xmm    
  retq                     #  5     0x12  1      OPC=retq                
                                                                         
.size target, .-target
