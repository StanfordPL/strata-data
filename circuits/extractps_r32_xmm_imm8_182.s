  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx                #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label     
  vmovq %xmm6, %r10                             #  3     0xf   5      OPC=vmovq_r64_xmm   
  xaddl %ebx, %r10d                             #  4     0x14  4      OPC=xaddl_r32_r32   
  retq                                          #  5     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
