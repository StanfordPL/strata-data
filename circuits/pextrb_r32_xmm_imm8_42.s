  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  cvtsd2ss %xmm1, %xmm1               #  1     0    4      OPC=cvtsd2ss_xmm_xmm  
  xorq %rbx, %rbx                     #  2     0x4  3      OPC=xorq_r64_r64      
  callq .move_byte_10_of_ymm1_to_r8b  #  3     0x7  5      OPC=callq_label       
  addb %r8b, %bl                      #  4     0xc  3      OPC=addb_r8_r8        
  retq                                #  5     0xf  1      OPC=retq              
                                                                                 
.size target, .-target
