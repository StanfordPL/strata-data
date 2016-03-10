  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  vmovd %xmm1, %r15d              #  1     0     5      OPC=vmovd_r32_xmm   
  movq $0xffffffffffffff80, %rbx  #  2     0x5   10     OPC=movq_r64_imm64  
  xaddq %rbx, %r15                #  3     0xf   4      OPC=xaddq_r64_r64   
  retq                            #  4     0x13  1      OPC=retq            
                                                                            
.size target, .-target
