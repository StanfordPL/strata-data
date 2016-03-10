  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode              
.target:                              #        0    0      OPC=<label>         
  sarb $0x1, %bh                      #  1     0    2      OPC=sarb_rh_one     
  adcb %bh, %bh                       #  2     0x2  2      OPC=adcb_rh_rh      
  movslq %ebx, %r9                    #  3     0x4  3      OPC=movslq_r64_r32  
  callq .move_r9b_to_byte_13_of_ymm1  #  4     0x7  5      OPC=callq_label     
  retq                                #  5     0xc  1      OPC=retq            
                                                                               
.size target, .-target
