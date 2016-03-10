  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x1, %rbx                               #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label      
  orb %bh, %bh                                  #  3     0xf   2      OPC=orb_rh_rh        
  rcll $0x1, %ebx                               #  4     0x11  2      OPC=rcll_r32_one     
  vmovd %xmm7, %ecx                             #  5     0x13  4      OPC=vmovd_r32_xmm    
  cmovnoq %rcx, %rcx                            #  6     0x17  4      OPC=cmovnoq_r64_r64  
  movzwl %cx, %ebx                              #  7     0x1b  3      OPC=movzwl_r32_r16   
  retq                                          #  8     0x1e  1      OPC=retq             
                                                                                           
.size target, .-target
