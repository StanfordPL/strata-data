  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  xorl %r8d, %r8d                    #  1     0     3      OPC=xorl_r32_r32  
  callq .read_zf_into_rbx            #  2     0x3   5      OPC=callq_label   
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label   
  subb %bh, %bh                      #  4     0xd   2      OPC=subb_rh_rh    
  xchgb %r8b, %bl                    #  5     0xf   3      OPC=xchgb_r8_r8   
  retq                               #  6     0x12  1      OPC=retq          
                                                                             
.size target, .-target
