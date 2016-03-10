  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm15   #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm15, %ymm14  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vcvtpd2ps %ymm14, %xmm0   #  3     0xa   5      OPC=vcvtpd2ps_xmm_ymm  
  movaps %xmm0, %xmm1       #  4     0xf   3      OPC=movaps_xmm_xmm     
  retq                      #  5     0x12  1      OPC=retq               
                                                                         
.size target, .-target
