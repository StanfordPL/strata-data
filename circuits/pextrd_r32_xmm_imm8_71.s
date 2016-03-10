  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  movq $0x40, %rbx                                #  2     0x5   10     OPC=movq_r64_imm64   
  subb %bl, %bl                                   #  3     0xf   2      OPC=subb_r8_r8       
  vmovq %xmm11, %rsp                              #  4     0x11  5      OPC=vmovq_r64_xmm    
  cmovnol %esp, %ebx                              #  5     0x16  3      OPC=cmovnol_r32_r32  
  retq                                            #  6     0x19  1      OPC=retq             
                                                                                             
.size target, .-target
