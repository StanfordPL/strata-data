  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vmovd %ebx, %xmm2            #  1     0     4      OPC=vmovd_xmm_r32        
  vmulpd %ymm2, %ymm2, %ymm10  #  2     0x4   4      OPC=vmulpd_ymm_ymm_ymm   
  seta %dil                    #  3     0x8   4      OPC=seta_r8              
  vcvttss2sil %xmm10, %esi     #  4     0xc   5      OPC=vcvttss2sil_r32_xmm  
  testl %ecx, %ebx             #  5     0x11  2      OPC=testl_r32_r32        
  adcb %dil, %sil              #  6     0x13  3      OPC=adcb_r8_r8           
  cmovzq %rcx, %rbx            #  7     0x16  4      OPC=cmovzq_r64_r64       
  retq                         #  8     0x1a  1      OPC=retq                 
                                                                              
.size target, .-target
