  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  movq $0x4, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64   
  vmovd %xmm11, %r13d                             #  3     0xf   5      OPC=vmovd_r32_xmm    
  orb %bh, %bl                                    #  4     0x14  2      OPC=orb_r8_rh        
  salb $0x1, %bh                                  #  5     0x16  2      OPC=salb_rh_one      
  cmovnal %r13d, %ebx                             #  6     0x18  4      OPC=cmovnal_r32_r32  
  retq                                            #  7     0x1c  1      OPC=retq             
                                                                                             
.size target, .-target
