  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  movhlps %xmm1, %xmm1                #  1     0     3      OPC=movhlps_xmm_xmm    
  movq $0x10, %rbx                    #  2     0x3   10     OPC=movq_r64_imm64     
  andnq %rbx, %rbx, %rbx              #  3     0xd   5      OPC=andnq_r64_r64_r64  
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label        
  adcb %r8b, %bl                      #  5     0x17  3      OPC=adcb_r8_r8         
  retq                                #  6     0x1a  1      OPC=retq               
                                                                                   
.size target, .-target
