  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm2      #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  movq $0x4, %rbx                   #  2     0x4   10     OPC=movq_r64_imm64        
  callq .move_128_064_xmm2_r12_r13  #  3     0xe   5      OPC=callq_label           
  rolb $0x1, %bh                    #  4     0x13  2      OPC=rolb_rh_one           
  xchgb %r13b, %bl                  #  5     0x15  3      OPC=xchgb_r8_r8           
  retq                              #  6     0x18  1      OPC=retq                  
                                                                                    
.size target, .-target
