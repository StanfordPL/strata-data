  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64  
  vmovd %xmm5, %r11d                            #  3     0xf   5      OPC=vmovd_r32_xmm   
  xaddl %ebx, %r11d                             #  4     0x14  4      OPC=xaddl_r32_r32   
  retq                                          #  5     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
