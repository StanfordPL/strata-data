  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  movq $0x80, %rbx                     #  1     0     10     OPC=movq_r64_imm64    
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0xa   5      OPC=callq_label       
  pmovzxbq %xmm13, %xmm5               #  3     0xf   6      OPC=pmovzxbq_xmm_xmm  
  vmovd %xmm5, %r13d                   #  4     0x15  5      OPC=vmovd_r32_xmm     
  movb %r13b, %bl                      #  5     0x1a  3      OPC=movb_r8_r8        
  retq                                 #  6     0x1d  1      OPC=retq              
                                                                                   
.size target, .-target
