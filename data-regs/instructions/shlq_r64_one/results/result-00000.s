  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  movq $0x1, %rcx                               #  1     0     10     OPC=movq_r64_imm64  
  vmovq %rbx, %xmm1                             #  2     0xa   5      OPC=vmovq_xmm_r64   
  callq .set_szp_for_bx                         #  3     0xf   5      OPC=callq_label     
  shlq %cl, %rbx                                #  4     0x14  3      OPC=shlq_r64_cl     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  5     0x17  5      OPC=callq_label     
  roll $0x1, %r11d                              #  6     0x1c  3      OPC=roll_r32_one    
  retq                                          #  7     0x1f  1      OPC=retq            
                                                                                          
.size target, .-target
