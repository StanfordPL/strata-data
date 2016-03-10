  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  movsldup %xmm1, %xmm10              #  1     0     5      OPC=movsldup_xmm_xmm      
  movq $0x10, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64        
  vbroadcastss %xmm10, %xmm1          #  3     0xf   5      OPC=vbroadcastss_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r8b  #  4     0x14  5      OPC=callq_label           
  xchgb %bl, %r8b                     #  5     0x19  3      OPC=xchgb_r8_r8           
  retq                                #  6     0x1c  1      OPC=retq                  
                                                                                      
.size target, .-target
