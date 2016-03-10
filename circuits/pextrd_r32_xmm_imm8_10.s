  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rdx             #  2     0x5   5      OPC=callq_label        
  popcntw %r12w, %r13w                          #  3     0xa   6      OPC=popcntw_r16_r16    
  cvtss2sil %xmm1, %ebx                         #  4     0x10  4      OPC=cvtss2sil_r32_xmm  
  cmovncl %edx, %ebx                            #  5     0x14  3      OPC=cmovncl_r32_r32    
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
