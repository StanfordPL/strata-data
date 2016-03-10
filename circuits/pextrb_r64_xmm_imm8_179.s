  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  vmovq %xmm4, %r13                             #  2     0x5   5      OPC=vmovq_r64_xmm   
  bswap %r13d                                   #  3     0xa   3      OPC=bswap_r32       
  movq $0x0, %rbx                               #  4     0xd   10     OPC=movq_r64_imm64  
  xchgb %r13b, %bl                              #  5     0x17  3      OPC=xchgb_r8_r8     
  retq                                          #  6     0x1a  1      OPC=retq            
                                                                                          
.size target, .-target
