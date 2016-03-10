  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm10              #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  vhsubps %xmm1, %xmm10, %xmm7              #  2     0x4   4      OPC=vhsubps_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11       #  3     0x8   5      OPC=callq_label          
  vcvttsd2sil %xmm7, %ebx                   #  4     0xd   4      OPC=vcvttsd2sil_r32_xmm  
  vpmovsxwd %xmm11, %ymm1                   #  5     0x11  5      OPC=vpmovsxwd_ymm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  6     0x16  5      OPC=callq_label          
  xaddw %bx, %r9w                           #  7     0x1b  5      OPC=xaddw_r16_r16        
  retq                                      #  8     0x20  1      OPC=retq                 
                                                                                           
.size target, .-target
