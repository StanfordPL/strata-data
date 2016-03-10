  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vxorpd %xmm15, %xmm15, %xmm1  #  1     0    5      OPC=vxorpd_xmm_xmm_xmm   
  vcvttsd2sil %xmm1, %ecx       #  2     0x5  4      OPC=vcvttsd2sil_r32_xmm  
  xchgb %bh, %cl                #  3     0x9  2      OPC=xchgb_r8_rh          
  orb %cl, %ah                  #  4     0xb  2      OPC=orb_rh_r8            
  retq                          #  5     0xd  1      OPC=retq                 
                                                                              
.size target, .-target
