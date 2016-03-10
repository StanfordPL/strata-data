  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  xchgw %cx, %cx          #  1     0    3      OPC=xchgw_r16_r16      
  andnq %rbx, %rcx, %r11  #  2     0x3  5      OPC=andnq_r64_r64_r64  
  cmpq %r11, %rbx         #  3     0x8  3      OPC=cmpq_r64_r64       
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
