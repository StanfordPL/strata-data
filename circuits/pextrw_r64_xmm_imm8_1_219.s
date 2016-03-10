  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  pmovsxwd %xmm1, %xmm11                        #  1     0     6      OPC=pmovsxwd_xmm_xmm       
  movapd %xmm11, %xmm12                         #  2     0x6   5      OPC=movapd_xmm_xmm         
  xorq %rbx, %rbx                               #  3     0xb   3      OPC=xorq_r64_r64           
  vunpckhps %xmm12, %xmm12, %xmm1               #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x13  5      OPC=callq_label            
  xorw %r13w, %bx                               #  6     0x18  4      OPC=xorw_r16_r16           
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
