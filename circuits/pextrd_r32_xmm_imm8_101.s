  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vcvtsd2ss %xmm1, %xmm1, %xmm14                #  1     0     4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vunpcklpd %xmm1, %xmm14, %xmm1                #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label            
  vmovd %xmm5, %ebx                             #  4     0xd   4      OPC=vmovd_r32_xmm          
  retq                                          #  5     0x11  1      OPC=retq                   
                                                                                                 
.size target, .-target
