  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  orps %xmm1, %xmm1                   #  2     0xa   3      OPC=orps_xmm_xmm    
  callq .move_byte_14_of_ymm1_to_r9b  #  3     0xd   5      OPC=callq_label     
  movb %bh, %bl                       #  4     0x12  2      OPC=movb_r8_rh      
  addb %r9b, %bl                      #  5     0x14  3      OPC=addb_r8_r8      
  retq                                #  6     0x17  1      OPC=retq            
                                                                                
.size target, .-target
