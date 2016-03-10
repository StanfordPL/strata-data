  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  pmovzxwq %xmm1, %xmm11            #  1     0     6      OPC=pmovzxwq_xmm_xmm    
  vrcpss %xmm11, %xmm11, %xmm10     #  2     0x6   5      OPC=vrcpss_xmm_xmm_xmm  
  vmovupd %ymm10, %ymm3             #  3     0xb   5      OPC=vmovupd_ymm_ymm     
  callq .move_128_064_xmm3_r12_r13  #  4     0x10  5      OPC=callq_label         
  movq $0x8, %rbx                   #  5     0x15  10     OPC=movq_r64_imm64      
  popcntw %r13w, %bx                #  6     0x1f  6      OPC=popcntw_r16_r16     
  cmovaw %r13w, %bx                 #  7     0x25  5      OPC=cmovaw_r16_r16      
  retq                              #  8     0x2a  1      OPC=retq                
                                                                                  
.size target, .-target
