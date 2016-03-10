  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  movq $0x4, %rbx                     #  1     0     10     OPC=movq_r64_imm64        
  vbroadcastss %xmm1, %ymm1           #  2     0xa   5      OPC=vbroadcastss_ymm_xmm  
  psubd %xmm1, %xmm1                  #  3     0xf   4      OPC=psubd_xmm_xmm         
  callq .move_byte_24_of_ymm1_to_r9b  #  4     0x13  5      OPC=callq_label           
  xchgb %r9b, %bl                     #  5     0x18  3      OPC=xchgb_r8_r8           
  retq                                #  6     0x1b  1      OPC=retq                  
                                                                                      
.size target, .-target
