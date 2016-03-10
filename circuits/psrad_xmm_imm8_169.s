  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm5     #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vmovups %xmm5, %xmm2      #  2     0x4   4      OPC=vmovups_xmm_xmm    
  vpmovsxdq %xmm2, %ymm13   #  3     0x8   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm13, %xmm14  #  4     0xd   5      OPC=vcvtpd2ps_xmm_ymm  
  movdqa %xmm14, %xmm1      #  5     0x12  5      OPC=movdqa_xmm_xmm     
  retq                      #  6     0x17  1      OPC=retq               
                                                                         
.size target, .-target
