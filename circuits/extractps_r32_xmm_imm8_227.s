  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movq $0xfffffffffffffffb, %rbx    #  1     0     10     OPC=movq_r64_imm64    
  unpckhps %xmm1, %xmm1             #  2     0xa   3      OPC=unpckhps_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  3     0xd   5      OPC=callq_label       
  salb $0x1, %bl                    #  4     0x12  2      OPC=salb_r8_one       
  callq .read_of_into_rbx           #  5     0x14  5      OPC=callq_label       
  cmovsl %r11d, %ebx                #  6     0x19  4      OPC=cmovsl_r32_r32    
  retq                              #  7     0x1d  1      OPC=retq              
                                                                                
.size target, .-target
