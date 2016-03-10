  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  vcvtps2pd %xmm1, %xmm3                    #  2     0x5   4      OPC=vcvtps2pd_xmm_xmm    
  vcvttss2sil %xmm3, %ebx                   #  3     0x9   4      OPC=vcvttss2sil_r32_xmm  
  xchgl %r9d, %ebx                          #  4     0xd   3      OPC=xchgl_r32_r32        
  retq                                      #  5     0x10  1      OPC=retq                 
                                                                                           
.size target, .-target
