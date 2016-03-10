  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpxor %ymm15, %ymm15, %ymm5       #  1     0     5      OPC=vpxor_ymm_ymm_ymm        
  vmaxsd %xmm2, %xmm1, %xmm10       #  2     0x5   4      OPC=vmaxsd_xmm_xmm_xmm       
  vfmsub132ps %xmm10, %xmm3, %xmm5  #  3     0x9   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vfmadd213ss %xmm5, %xmm2, %xmm1   #  4     0xe   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
