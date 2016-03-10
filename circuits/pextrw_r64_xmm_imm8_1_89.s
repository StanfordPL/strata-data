  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  movupd %xmm1, %xmm11            #  1     0     5      OPC=movupd_xmm_xmm      
  vpmovsxwq %xmm11, %xmm6         #  2     0x5   5      OPC=vpmovsxwq_xmm_xmm   
  vmulsd %xmm11, %xmm6, %xmm2     #  3     0xa   5      OPC=vmulsd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  4     0xf   5      OPC=callq_label         
  movq $0x0, %rbx                 #  5     0x14  10     OPC=movq_r64_imm64      
  movw %r9w, %bx                  #  6     0x1e  4      OPC=movw_r16_r16        
  retq                            #  7     0x22  1      OPC=retq                
                                                                                
.size target, .-target
