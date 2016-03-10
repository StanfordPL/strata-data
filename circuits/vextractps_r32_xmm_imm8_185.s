  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vunpcklps %xmm1, %xmm1, %xmm8     #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  movshdup %xmm8, %xmm2             #  2     0x4   5      OPC=movshdup_xmm_xmm       
  vpmovsxwq %xmm1, %xmm11           #  3     0x9   5      OPC=vpmovsxwq_xmm_xmm      
  vhsubps %xmm11, %xmm1, %xmm8      #  4     0xe   5      OPC=vhsubps_xmm_xmm_xmm    
  callq .move_128_064_xmm2_r12_r13  #  5     0x13  5      OPC=callq_label            
  cvtsd2sil %xmm8, %ebx             #  6     0x18  5      OPC=cvtsd2sil_r32_xmm      
  subq %rbx, %rbx                   #  7     0x1d  3      OPC=subq_r64_r64           
  xchgl %ebx, %r13d                 #  8     0x20  3      OPC=xchgl_r32_r32          
  retq                              #  9     0x23  1      OPC=retq                   
                                                                                     
.size target, .-target
