  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  movq $0x6, %rbx             #  1     0     10     OPC=movq_r64_imm64      
  vmaxpd %xmm1, %xmm1, %xmm7  #  2     0xa   4      OPC=vmaxpd_xmm_xmm_xmm  
  popcntw %bx, %r15w          #  3     0xe   6      OPC=popcntw_r16_r16     
  vmovd %xmm7, %esi           #  4     0x14  4      OPC=vmovd_r32_xmm       
  cmovnbw %si, %bx            #  5     0x18  4      OPC=cmovnbw_r16_r16     
  retq                        #  6     0x1c  1      OPC=retq                
                                                                            
.size target, .-target
