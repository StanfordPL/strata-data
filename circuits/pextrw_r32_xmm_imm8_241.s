  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq $0x0, %rbx         #  1     0     10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm1, %xmm9  #  2     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  unpckhpd %xmm9, %xmm9   #  3     0xf   5      OPC=unpckhpd_xmm_xmm   
  vmovq %xmm9, %rdi       #  4     0x14  5      OPC=vmovq_r64_xmm      
  xchgw %di, %bx          #  5     0x19  3      OPC=xchgw_r16_r16      
  retq                    #  6     0x1c  1      OPC=retq               
                                                                       
.size target, .-target
