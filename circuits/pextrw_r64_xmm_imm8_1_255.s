  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label        
  movq $0x7, %rdx                   #  2     0x5   10     OPC=movq_r64_imm64     
  notw %dx                          #  3     0xf   3      OPC=notw_r16           
  salb $0x1, %dl                    #  4     0x12  2      OPC=salb_r8_one        
  shrxq %rdx, %r13, %rbx            #  5     0x14  5      OPC=shrxq_r64_r64_r64  
  retq                              #  6     0x19  1      OPC=retq               
                                                                                 
.size target, .-target
