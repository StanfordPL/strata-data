  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label       
  vzeroall                        #  2     0x5   3      OPC=vzeroall          
  movmskpd %xmm15, %rax           #  3     0x8   5      OPC=movmskpd_r64_xmm  
  salw $0x1, %ax                  #  4     0xd   3      OPC=salw_r16_one      
  cmovleq %rbx, %r8               #  5     0x10  4      OPC=cmovleq_r64_r64   
  callq .move_064_128_r8_r9_xmm1  #  6     0x14  5      OPC=callq_label       
  retq                            #  7     0x19  1      OPC=retq              
                                                                              
.size target, .-target
