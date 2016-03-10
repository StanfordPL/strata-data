  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnsw %cx, %cx    #  1     0    4      OPC=cmovnsw_r16_r16  
  movswq %cx, %r13    #  2     0x4  4      OPC=movswq_r64_r16   
  cmovsl %r13d, %ebx  #  3     0x8  4      OPC=cmovsl_r32_r32   
  retq                #  4     0xc  1      OPC=retq             
                                                                
.size target, .-target
